SELECT MEMBER_ID,
    MEMBER_NAME,
    GENDER,
    DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d')
from MEMBER_PROFILE
WHERE GENDER = 'W'
    and SUBSTRING_INDEX(SUBSTRING_INDEX(DATE_OF_BIRTH, '-', 2), '-', -1) = '03'
    and TLNO IS NOT NULL
ORDER BY MEMBER_ID