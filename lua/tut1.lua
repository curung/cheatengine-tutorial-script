

-- 메모리에서 값을 찾고 변경
local initialValue = 100 -- 변경하고자 하는 값의 초기값
local newValue = 5000 -- 변경할 값

local address = getAddress(initialValue) -- 값을 찾을 메모리 주소 검색
if address ~= nil then
    writeInteger(address, newValue) -- 메모리 값 변경
    print("clear")
else
    print("falled!!")
end

