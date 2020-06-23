.class public Lcom/android/systemui/pip/phone/PipUtils;
.super Ljava/lang/Object;
.source "PipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    const/4 v7, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "sysUiPackageName":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 41
    .local v3, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v5, :cond_1

    .line 42
    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v5

    if-lez v5, :cond_1

    .line 43
    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 45
    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 44
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 46
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 47
    return-object v0

    .line 43
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 51
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v4    # "sysUiPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PipUtils"

    const-string/jumbo v6, "Unable to get pinned stack."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v7
.end method
