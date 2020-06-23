.class public Lcom/android/systemui/qs/tiles/DataUsageUtils;
.super Ljava/lang/Object;
.source "DataUsageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bytes"    # J

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->isShowingSizeInGB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const v1, 0x1040245

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 31
    const-wide/32 v4, 0x40000000

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 35
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    const v1, 0x10403a0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 34
    const-wide/32 v4, 0x100000

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private static formatFileSize(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bytes"    # J
    .param p3, "in"    # J
    .param p5, "unit"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const v5, 0x3c23d70a    # 0.01f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    long-to-float v2, p1

    long-to-float v3, p3

    div-float v1, v2, v3

    .line 51
    .local v1, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    cmpg-float v2, v1, v5

    if-gez v2, :cond_0

    .line 52
    new-array v2, v4, [Ljava/lang/Object;

    .line 53
    const-string/jumbo v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p5, v2, v7

    .line 52
    const v3, 0x7f1101a5

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 55
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    .line 56
    const-string/jumbo v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p5, v2, v7

    .line 55
    const v3, 0x7f1101a4

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isFeature4232DataUsageUnitsAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 79
    const-string/jumbo v2, "data_unit_display_gb"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 78
    invoke-static {v1, v2, v4, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 81
    .local v0, "value":I
    const-string/jumbo v1, "DataUsageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in isFeature4232DataUsageUnitsAvailable(), value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eq v0, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShowingSizeInGB(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "data_unit_display_gb"

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 68
    const/4 v5, -0x1

    .line 67
    invoke-static {v2, v3, v5, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 70
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
