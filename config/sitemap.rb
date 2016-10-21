# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.yuneka.com.tr"

SitemapGenerator::Sitemap.create do
  Vendor.find_each do |vendor|
    add vendor_path(vendor.id), changefreq: "monthly", priority: "1.0"
  end

  Category.find_each do |category|
    add category_path(vendor_id: category.vendor_id, id: category.id), changefreq: "monthly", priority: "1.0"
  end

  Product.find_each do |product|
    add product_path(product), changefreq: "yearly"
  end

end
