# chipers = []
# 10000.times do
# tobac_cocipher = TobaccoCipher.create
# chipers << tobac_cocipher.cipher
# end
# File.open("public/ciphers_#{Date.today.to_s}.txt","w+") do |f|
# f.puts(chipers)
# end
TobaccoCipher.destroy_all
  File.open("public/1/ciphers_2019-03-15.txt").each do |line|
  TobaccoCipher.create(:cipher => line.strip)
end
