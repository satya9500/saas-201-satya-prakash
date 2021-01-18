require "aes"

class AES_Encryptor
  def initialize(source_file, password)
    @source_file = source_file
    @password = password
  end

  def encrypt_file
    encrypted = AES.encrypt(File.read(@source_file), @password)
    target_file = "#{@source_file}.enc"
    File.open(target_file, "wb") { |f| f.write(encrypted) }
  end

  def decrypt_file
    iv = AES.iv(:base_64)
    decrypted = AES.decrypt(File.read("#{@source_file}.enc"), @password, { :iv => iv })
    target_file = "#{@source_file}.dec"
    File.open(target_file, "wb") { |f| f.write(decrypted) }
  end
end

obj = AES_Encryptor.new(ARGV[0], ARGV[1])
obj.encrypt_file
obj.decrypt_file
