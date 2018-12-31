deploy:
	for i in $(cat .env) ; do export  $i; done
	docker stack deploy -c stack.yml --resolve-image=never pihole

remove:
	docker stack rm pihole