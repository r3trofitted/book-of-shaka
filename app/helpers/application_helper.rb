module ApplicationHelper
  def yes_or_no(value)
    value ? t("yes") : t("no")
  end

  def interactive_track(character, track, *options, max: nil, **html_options)
    value = character.public_send(track)

    if value.respond_to? :current
      max   = value.base
      value = value.current
    end
    html_options.merge! data: { controller: "tracker", action: "click->tracker#adjust:prevent" }

    track(value, *options, max: max, **html_options) do
      concat button_to(t(".remove"), [character, :track_decreases], params: { track: track }, data: { tracker_target: "decreaser" }, class: "sr-only")
      concat button_to(t(".add"), [character, :track_increases], params: { track: track }, data: { tracker_target: "increaser" }, class: "sr-only")
    end
  end

  def track(value, *options, max: value, **html_options, &block)
    css_classes = class_names("track", html_options.delete(:class), square: options.include?(:square))

    tag.fieldset(class: css_classes, **html_options) do
      max.times { concat tag.input(type: "checkbox", checked: it < value) }
      concat(capture(&block)) if block_given?
    end
  end

  def sorted_dice_pool(dice)
    priorities = [BaseDie, SkillDie, GearDie]

    dice.sort_by { [priorities.index(it.class), -it.roll] }
  end
end
