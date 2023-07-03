-- Cheat Engine Lua 스크립트

-- 타겟 프로세스와 Cheat Engine 연결
local process = getProcessByName("target_process.exe") -- 대상 프로세스의 이름을 적어주세요
if process == nil then
    print("대상 프로세스를 찾을 수 없습니다.")
    return
end
local openedProcess = openProcess(process.ID)

-- 메모리에서 값을 찾고 변경
local initialValue = 1 -- 변경하고자 하는 값의 초기값
local newValue = 5000 -- 변경할 값

local address = findWhatDecreased(initialValue) -- 값을 감소시킨 메모리 주소 검색
if address == nil then
    print("값을 찾을 수 없습니다.")
else
    writeInteger(address, newValue) -- 메모리 값 변경
    print("값을 변경했습니다.")
end

-- Cheat Engine와 연결 종료
closeProcess(openedProcess)
