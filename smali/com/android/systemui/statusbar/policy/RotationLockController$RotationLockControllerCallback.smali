.class public interface abstract Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.super Ljava/lang/Object;
.source "RotationLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RotationLockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RotationLockControllerCallback"
.end annotation


# virtual methods
.method public onRotationLockStateChanged(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "affordanceVisible"    # Z

    .prologue
    .line 33
    return-void
.end method

.method public onRotationLockStateChanged(ZZ)V
    .locals 0
    .param p1, "rotationLocked"    # Z
    .param p2, "affordanceVisible"    # Z

    .prologue
    .line 32
    return-void
.end method
