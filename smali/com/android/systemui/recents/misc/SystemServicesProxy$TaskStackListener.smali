.class public abstract Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskStackListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkCurrentUserId(Landroid/content/Context;Z)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debug"    # Z

    .prologue
    .line 205
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 206
    .local v1, "processUserId":I
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 207
    .local v0, "currentUserId":I
    if-eq v1, v0, :cond_1

    .line 208
    if-eqz p2, :cond_0

    .line 209
    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UID mismatch. SystemUI is running uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    const-string/jumbo v4, " and the current user is uid="

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 214
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public onActivityDismissingDockedStack()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 0
    .param p1, "clearedTask"    # Z

    .prologue
    .line 190
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .prologue
    .line 187
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method
