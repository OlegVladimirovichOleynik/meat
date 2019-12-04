class TobaccoCipherController < ApplicationController
  before_action :find_number
  def test_cipher
    if @cipher.exists?
      if @cipher.where(number_cheks: 0).exists?
        @cipher.update(number_cheks: 1)
        flash[:notice] = t(:notice)
      elsif @cipher.where(number_cheks: 1).exists?
        @cipher.update(number_cheks: 2)
        flash[:notice] = t(:notice)
      else
        flash[:error] = t(:error)
      end
    else
      flash[:error] = t(:error)
    end
    redirect_to root_url(anchor: 'check')
  end

  private

  def find_number
    @cipher = TobaccoCipher.where(cipher: cipher_params[:cipher])
  end

  def cipher_params
    params.require(:cipher).permit(:cipher, :number_cheks)
  end
end
