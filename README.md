## Steps ##

## Using Ansible ##

1. Clone repository
2. Change parameters in vars.yaml file
3. Populate data.csv file with your informations.
4. Run playbook using the command:
   ansible-playbook  congresso_online_invite.yaml
5. Go have a coffe... :-D

## Building new image ##

1. Clone this project:


```
git clone http://gitlab.intranet.ufba.br/michel.peterson/ansible-congresso.git
```

## Running directly from docker hub ##

2. Pull and run the container using the command:

```
docker container run -ti --mount type=bind,source="$(pwd)/data.csv",target=/ansible-congresso/data.csv michelpetterson/congresso75anos_inviter:1.5 ansible-playbook congresso_online_invite.yaml
```

* The command above must be executed in current directory from data.csv.
* Need edit vars.yaml and change smtp parameters.

## data.csv file example ##

```
proponente;email_proponente;sala;data;hora;titulo;participantes;sy_url
Eliseu Oliveira;<eliseu.oliveira@ufba.br>;A;20-10-2021;15:00-16:00;Apresentando automação do congresso;Eliseu, Michel, Alberto, João;qweqweqeqw
```

* The file no need have the column name.
* The order is very important.
* All columns is required.
