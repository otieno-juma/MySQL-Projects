SELECT  *
FROM   (SELECT 'Yes'       AS reply
        ,      'Decided'   AS answer
        UNION ALL
        SELECT 'No'        AS reply
        ,      'Decided'   AS answer
        UNION ALL
        SELECT 'Maybe'     AS reply
        ,      'Undecided' AS answer) a
        LEFT JOIN
       (SELECT 'Yes' AS reply
        UNION ALL
        SELECT 'No'  AS reply) b
ON      a.reply = b.reply;