build-rails:
	time docker build -t r6by/rails-hello:$(TAG) . -f docker/rails/Dockerfile

build-sidekiq:
	time docker build -t r6by/rails-hello-sidekiq:$(TAG) . -f docker/sidekiq/Dockerfile --build-arg TAG=$(TAG)
