package ry.model;

import java.math.BigDecimal;

public class SysPermItem {
    private BigDecimal id;

    private Long idx;

    private BigDecimal parentId;

    private Long permLevel;

    private String permName;

    private String permUri;

    private Long sysType;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Long getIdx() {
        return idx;
    }

    public void setIdx(Long idx) {
        this.idx = idx;
    }

    public BigDecimal getParentId() {
        return parentId;
    }

    public void setParentId(BigDecimal parentId) {
        this.parentId = parentId;
    }

    public Long getPermLevel() {
        return permLevel;
    }

    public void setPermLevel(Long permLevel) {
        this.permLevel = permLevel;
    }

    public String getPermName() {
        return permName;
    }

    public void setPermName(String permName) {
        this.permName = permName == null ? null : permName.trim();
    }

    public String getPermUri() {
        return permUri;
    }

    public void setPermUri(String permUri) {
        this.permUri = permUri == null ? null : permUri.trim();
    }

    public Long getSysType() {
        return sysType;
    }

    public void setSysType(Long sysType) {
        this.sysType = sysType;
    }
}