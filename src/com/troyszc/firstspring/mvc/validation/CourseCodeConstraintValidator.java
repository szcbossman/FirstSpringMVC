package com.troyszc.firstspring.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

    private String coursePrefix;

    @Override
    public void initialize(CourseCode theCourseCode) {
        coursePrefix = theCourseCode.value();
    }

    @Override
    public boolean isValid(String formInput, ConstraintValidatorContext constraintValidatorContext) {
        if (formInput != null) {
            boolean result = formInput.startsWith(coursePrefix);
            return result;
        }
        else {
            return true;
        }
    }
}
