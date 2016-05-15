class CheckBoxSamplesController < ApplicationController

  def index
    @checkbox = CheckBoxSample.find(1)
  end

  # 登録画面表示
  def new
    @checkbox = CheckBoxSample.new
  end

  # 登録処理実行
  def create
    CheckBoxSample.create(status_param)
    redirect_to root_path
  end

  # 編集画面表示
  def edit
    @checkbox = CheckBoxSample.find(1)
  end

  private
    def status_param
      params.require(:check_box_sample).permit(:status)
    end


end
