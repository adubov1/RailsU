10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices consequat lectus, sed consectetur ipsum elementum sed. Mauris in ante in arcu auctor elementum sit amet et magna. Duis sagittis nulla rutrum, eleifend magna sed, interdum nisi. Vestibulum ac imperdiet est. Cras aliquam neque vitae nulla maximus aliquam. Nullam id pharetra metus. Proin fringilla risus in odio sodales suscipit. Nam interdum, enim a luctus eleifend, nisl tortor sollicitudin enim, eget suscipit tellus massa eu tellus.

Curabitur malesuada, libero sit amet eleifend sodales, dui ante rutrum nibh, in scelerisque odio ante id mauris. Vestibulum sed sem eget sem dapibus porttitor. Sed ac mattis purus, sit amet interdum eros. Morbi tempor urna eget velit facilisis mollis. Nullam mauris est, dignissim eget libero id, commodo posuere purus. Pellentesque nec ante cursus, tincidunt leo et, aliquam nulla. Mauris sed orci nec orci hendrerit aliquam. Fusce ullamcorper neque quis ante pellentesque euismod. Sed condimentum ullamcorper metus, porttitor pulvinar erat. Proin sagittis bibendum massa id egestas. Nullam vitae metus blandit, tristique urna non, euismod elit."
	)
end
puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end
puts "5 Skills Made"


9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "My Service",
		body: "Curabitur malesuada, libero sit amet eleifend sodales, dui ante rutrum nibh, in scelerisque odio ante id mauris. Vestibulum sed sem eget sem dapibus porttitor. Sed ac mattis purus, sit amet interdum eros. Morbi tempor urna eget velit facilisis mollis. Nullam mauris est, dignissim eget libero id, commodo posuere purus. Pellentesque nec ante cursus, tincidunt leo et, aliquam nulla. Mauris sed orci nec orci hendrerit aliquam. Fusce ullamcorper neque quis ante pellentesque euismod. Sed condimentum ullamcorper metus, porttitor pulvinar erat. Proin sagittis bibendum massa id egestas. Nullam vitae metus blandit, tristique urna non, euismod elit.",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
	)
end
puts "Portfolio Items Made"