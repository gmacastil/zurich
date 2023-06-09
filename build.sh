export DOCKER_BUILDKIT=1
yarn install --frozen-lockfile
yarn tsc
yarn build:backend
docker image build . -f packages/backend/Dockerfile --tag backstage-da:1.$1
docker tag backstage-da:1.$1 us-east1-docker.pkg.dev/arquitectura-digital-everis/regdev01/backstage-da:1.$1
docker push us-east1-docker.pkg.dev/arquitectura-digital-everis/regdev01/backstage-da:1.$1
