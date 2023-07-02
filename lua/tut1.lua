-- Cheat Engine Lua 스크립트

-- 타겟 프로세스와 Cheat Engine 연결
local process = getProcessByName("target_process.exe") -- 대상 프로세스의 이름을 적어주세요
if process == nil then
    print("대상 프로세스를 찾을 수 없습니다.")
    return
end
local openedProcess = openProcess(process.ID)

-- memory --
local valueToFind = 42 -- 변경하고자 하는 값
local newValue = 100 -- 변경할 값

local address = findAddress(valueToFind) -- 값을 찾을 메모리 주소 검색
if address == nil then
    print("falled.")
else
    writeInteger(address, newValue) -- 메모리 값 변경
    print("clear!!.")
end

-- Cheat Engine와 연결 종료
closeProcess(openedProcess)
