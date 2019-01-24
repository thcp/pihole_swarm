deploy:
	docker stack deploy -c stack.yml --resolve-image=never pihole

remove:
	docker stack rm pihole
