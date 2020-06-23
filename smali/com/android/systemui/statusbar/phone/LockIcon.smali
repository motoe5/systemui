.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$4ML7UA3HI1AZz7rF4mD53wD9vY4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$4ML7UA3HI1AZz7rF4mD53wD9vY4;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 68
    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "oldDeviceInteractive"    # Z
    .param p4, "deviceInteractive"    # Z
    .param p5, "oldScreenOn"    # Z
    .param p6, "screenOn"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 282
    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 283
    const v0, 0x7f080283

    return v0

    .line 284
    :cond_0
    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 285
    const v0, 0x7f08034c

    return v0

    .line 286
    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 287
    const v0, 0x7f0800b3

    return v0

    .line 288
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 289
    const v0, 0x7f080281

    return v0

    .line 290
    :cond_3
    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 290
    if-eqz v0, :cond_4

    .line 292
    const v0, 0x7f08027d

    return v0

    .line 293
    :cond_4
    if-ne p2, v1, :cond_7

    if-nez p5, :cond_5

    if-eqz p6, :cond_5

    if-nez p4, :cond_6

    .line 294
    :cond_5
    if-eqz p6, :cond_7

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_7

    .line 293
    if-eqz p4, :cond_7

    .line 295
    :cond_6
    const v0, 0x7f08027f

    return v0

    .line 297
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .prologue
    .line 242
    sparse-switch p1, :sswitch_data_0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 244
    :sswitch_0
    const v0, 0x7f08012e

    .line 276
    .local v0, "iconRes":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 247
    .end local v0    # "iconRes":I
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 251
    :cond_0
    const v0, 0x7f08012f

    .line 253
    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 255
    .end local v0    # "iconRes":I
    :sswitch_2
    const v0, 0x10802fa

    .line 256
    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 259
    .end local v0    # "iconRes":I
    :sswitch_3
    const v0, 0x7f0800ea

    .line 260
    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 265
    .end local v0    # "iconRes":I
    :sswitch_4
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 266
    const v0, 0x7f0800eb

    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 267
    .end local v0    # "iconRes":I
    :cond_1
    const v0, 0x7f08027f

    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 270
    .end local v0    # "iconRes":I
    :sswitch_5
    const v0, 0x7f0800ec

    .line 271
    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x14 -> :sswitch_3
    .end sparse-switch
.end method

.method private getState()I
    .locals 4

    .prologue
    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 303
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 304
    .local v0, "fingerprintRunning":Z
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    .line 305
    .local v1, "unlockingAllowed":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_0

    .line 306
    const/4 v3, 0x4

    return v3

    .line 307
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    const/4 v3, 0x1

    return v3

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    const/4 v3, 0x2

    return v3

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceIDUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    const/16 v3, 0x14

    return v3

    .line 315
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 316
    const/4 v3, 0x3

    return v3

    .line 318
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method private updateClickability()V
    .locals 4

    .prologue
    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .line 213
    .local v1, "clickToUnlock":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    .line 215
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    xor-int/lit8 v2, v0, 0x1

    .line 217
    :goto_1
    if-nez v0, :cond_3

    .end local v1    # "clickToUnlock":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 219
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 220
    return-void

    .line 213
    .restart local v1    # "clickToUnlock":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "clickToForceLock":Z
    goto :goto_0

    .line 215
    .end local v0    # "clickToForceLock":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "longClickToForceLock":Z
    goto :goto_1

    .line 217
    .end local v2    # "longClickToForceLock":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_LockIcon_2428()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 112
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 113
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 115
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 85
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 225
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v1, :cond_0

    .line 227
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    const/16 v2, 0x10

    .line 227
    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 230
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    const v2, 0x7f1100ed

    .line 231
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 234
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 91
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 101
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 106
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 96
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 123
    return-void
.end method

.method public update(Z)V
    .locals 21
    .param p1, "force"    # Z

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v20

    .line 128
    :goto_0
    if-eqz v20, :cond_8

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 133
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v4

    .line 134
    .local v4, "state":I
    const/4 v2, 0x3

    if-eq v4, v2, :cond_0

    const/4 v2, 0x4

    if-ne v4, v2, :cond_9

    :cond_0
    const/4 v10, 0x1

    .line 135
    .local v10, "anyFingerprintIcon":Z
    :goto_2
    move/from16 v19, v10

    .line 136
    .local v19, "useAdditionalPadding":Z
    move/from16 v17, v10

    .line 137
    .local v17, "trustHidden":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v4, v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v2, v3, :cond_a

    .line 140
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 141
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v2, p0

    .line 140
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v13

    .line 142
    .local v13, "iconAnimRes":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_b

    const/16 v16, 0x1

    .line 143
    .local v16, "isAnim":Z
    :goto_4
    const v2, 0x7f08027d

    if-ne v13, v2, :cond_c

    .line 144
    const/4 v10, 0x1

    .line 145
    const/16 v19, 0x1

    .line 146
    .local v19, "useAdditionalPadding":Z
    const/16 v17, 0x1

    .line 158
    .end local v17    # "trustHidden":Z
    .end local v19    # "useAdditionalPadding":Z
    :cond_2
    :goto_5
    if-eqz v16, :cond_e

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 166
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    :goto_6
    instance-of v2, v11, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_f

    move-object v9, v11

    .line 167
    check-cast v9, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 169
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 170
    const v3, 0x7f0700af

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 171
    .local v14, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 172
    const v3, 0x7f0700b0

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 173
    .local v15, "iconWidth":I
    if-nez v10, :cond_4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, v14, :cond_3

    .line 174
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eq v2, v15, :cond_4

    .line 175
    :cond_3
    new-instance v12, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v12, v11, v15, v14}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    move-object v11, v12

    .line 177
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v19, :cond_10

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    const v3, 0x7f070092

    .line 178
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 177
    :goto_8
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 182
    if-eqz v10, :cond_11

    const/high16 v2, 0x3f800000    # 1.0f

    .line 181
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 185
    if-eqz v9, :cond_5

    if-eqz v16, :cond_5

    .line 186
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 187
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 190
    :cond_5
    const v2, 0x7f08027d

    if-ne v13, v2, :cond_12

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :goto_a
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 198
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 203
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "iconAnimRes":I
    .end local v14    # "iconHeight":I
    .end local v15    # "iconWidth":I
    .end local v16    # "isAnim":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v2

    if-eqz v2, :cond_13

    xor-int/lit8 v18, v17, 0x1

    .line 204
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 206
    return-void

    .line 126
    .end local v4    # "state":I
    .end local v10    # "anyFingerprintIcon":Z
    :cond_7
    const/16 v20, 0x0

    .local v20, "visible":Z
    goto/16 :goto_0

    .line 131
    .end local v20    # "visible":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto/16 :goto_1

    .line 134
    .restart local v4    # "state":I
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "anyFingerprintIcon":Z
    goto/16 :goto_2

    .line 138
    .restart local v17    # "trustHidden":Z
    .local v19, "useAdditionalPadding":Z
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v2, v3, :cond_1

    .line 137
    if-eqz p1, :cond_6

    goto/16 :goto_3

    .line 142
    .restart local v13    # "iconAnimRes":I
    :cond_b
    const/16 v16, 0x0

    .restart local v16    # "isAnim":Z
    goto/16 :goto_4

    .line 147
    :cond_c
    const v2, 0x7f08034c

    if-ne v13, v2, :cond_d

    .line 148
    const/4 v10, 0x1

    .line 149
    const/16 v19, 0x0

    .line 150
    .local v19, "useAdditionalPadding":Z
    const/16 v17, 0x1

    .local v17, "trustHidden":Z
    goto/16 :goto_5

    .line 151
    .local v17, "trustHidden":Z
    .local v19, "useAdditionalPadding":Z
    :cond_d
    const v2, 0x7f0800b3

    if-ne v13, v2, :cond_2

    .line 152
    const/4 v10, 0x1

    .line 153
    const/16 v19, 0x0

    .line 154
    .local v19, "useAdditionalPadding":Z
    const/16 v17, 0x0

    .local v17, "trustHidden":Z
    goto/16 :goto_5

    .line 163
    .end local v17    # "trustHidden":Z
    .end local v19    # "useAdditionalPadding":Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 168
    :cond_f
    const/4 v9, 0x0

    .local v9, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    goto/16 :goto_7

    .line 180
    .end local v9    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .restart local v14    # "iconHeight":I
    .restart local v15    # "iconWidth":I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 182
    :cond_11
    const/high16 v2, 0x3f000000    # 0.5f

    goto/16 :goto_9

    .line 194
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 203
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "iconAnimRes":I
    .end local v14    # "iconHeight":I
    .end local v15    # "iconWidth":I
    .end local v16    # "isAnim":Z
    :cond_13
    const/16 v18, 0x0

    .local v18, "trustManaged":Z
    goto :goto_b
.end method
