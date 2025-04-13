package com.isxcode.star.api.form.req;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import javax.validation.constraints.NotEmpty;

@Data
public class OfflineFormReq {

    @Schema(title = "表单id", example = "sy_123")
    @NotEmpty(message = "formId不能为空")
    private String formId;

}
