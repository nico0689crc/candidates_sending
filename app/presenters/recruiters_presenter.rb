class RecruitersPresenter
    attr_reader :filter
  
    PER_PAGE = 20
  
    def initialize(params)
      @params = params
      @filter = RecruiterFilter.new(filter_params)
    end
  
    def recruiters
      @recruiters ||= @filter.call(@current_entity)
                            .sorting_order(order_params)
                            .paginate(page: page, per_page: PER_PAGE)
                            .decorate
    end
  
    private
  
    def filter_params
      @params.fetch(:filter, {}).permit!
    end
  
    def page
      @params[:page].blank? ? 1 : @params[:page]
    end
  
    def order_params
      @params.fetch(:order, ['id', 'asc'])
    end
end
  