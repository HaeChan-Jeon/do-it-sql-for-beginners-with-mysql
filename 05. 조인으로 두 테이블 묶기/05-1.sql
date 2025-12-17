use sakila;

-- 내부 조인한 테이블에서 조건에 맞는 데이터 조회
SELECT
	a.address_id AS a_address_id, a.customer_id, a.store_id, a.first_name, a.last_name, a.email,
    b.address_id AS b_addredd_id, b.address, b.district, b.city_id, b.postal_code, b.phone, b.location
FROM customer AS a INNER JOIN address AS b ON a.address_id = b.address_id
WHERE a.first_name = 'ROSA';

-- 2개의 조인 조건으로 조인한 테이블에서 조건에 맞는 데이터 조회
SELECT
	a.customer_id, a.first_name, a.last_name,
    b.address_id, b.address, b.district, b.postal_code
FROM customer AS a
	INNER JOIN address AS b ON a.address_id = b.address_id AND a.create_date = b.last_update
WHERE a.first_name = 'ROSA';

-- 3개의 테이블을 조인한 테이블에서 조건에 맞는 데이터 조회
SELECT
	a.customer_id, a.first_name, a.last_name,
    b.address_id, b.address, b.district, b.postal_code,
    c.city_id, c.city
FROM customer AS a
	INNER JOIN address AS b ON a.address_id = b.address_id
    INNER JOIN city AS c ON b.city_id = c.city_id
WHERE a.first_name = 'ROSA';