build:
	rm -rf public
	hugo
deploy: build
	aws s3 sync public/ s3://hugo-notebook --acl public-read --delete
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id E14MN0WR5SZG8M --paths '/*'
