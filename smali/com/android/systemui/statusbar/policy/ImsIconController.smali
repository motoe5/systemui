.class public Lcom/android/systemui/statusbar/policy/ImsIconController;
.super Ljava/lang/Object;
.source "ImsIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/policy/ImsIconController;


# instance fields
.field private mCPEnabled:Z

.field private mConfigShowImsIcon:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentVoWifiStatus:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

.field private mHandler:Landroid/os/Handler;

.field private mHideVoLteIcon:Z

.field private mHideVoWifiIcon:Z

.field private mIMSSubId:I

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mShow4GForLTE:Z

.field private mShowNotReadyIcon:Z

.field private mShowVoLteBadge:Z

.field private mSlotIMS:Ljava/lang/String;

.field private mSlotVoWifi:Ljava/lang/String;

.field private mSupportCallingPlus:Z

.field private mVoLteRegistered:Z

.field private mVoWifiRegistered:Z

.field private mWfcEnabled:Z

.field private mWifiConnected:Z

.field private mWifiEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/ImsIconController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/ImsIconController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/ImsIconController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/ImsIconController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mCPEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/ImsIconController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/ImsIconController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWfcEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/ImsIconController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/ImsIconController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->refreshCallingPlusIcon()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/ImsIconController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/ImsIconController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->refreshVoWifiIcon()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/ImsIconController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/ImsIconController;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ImsIconController;->updateIMS(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowNotReadyIcon:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHandler:Landroid/os/Handler;

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mConfigShowImsIcon:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWfcEnabled:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWifiEnabled:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWifiConnected:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoLteRegistered:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoWifiRegistered:Z

    .line 82
    sget-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_UNREGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mCurrentVoWifiStatus:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIMSSubId:I

    .line 87
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSupportCallingPlus:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mCPEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoLteIcon:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoWifiIcon:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowVoLteBadge:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShow4GForLTE:Z

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method private getIconConfig()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 246
    const-string/jumbo v6, "persist.dbg.show_ims_icon"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    const/4 v3, 0x1

    .line 247
    .local v3, "override":Z
    :goto_0
    new-instance v6, Lcom/motorola/android/content/MSimContext;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    iget v8, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIMSSubId:I

    invoke-virtual {v6, v8}, Lcom/motorola/android/content/MSimContext;->getSimContext(I)Landroid/content/Context;

    move-result-object v0

    .line 248
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 249
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f050043

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_2

    .end local v3    # "override":Z
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mConfigShowImsIcon:Z

    .line 251
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoLteIcon:Z

    .line 252
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoWifiIcon:Z

    .line 253
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowVoLteBadge:Z

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "iconMode":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mConfigShowImsIcon:Z

    if-eqz v6, :cond_0

    .line 256
    const v6, 0x7f0b0008

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 257
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_3

    move v6, v5

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoLteIcon:Z

    .line 258
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_4

    move v6, v5

    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoWifiIcon:Z

    .line 259
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_5

    move v6, v5

    :goto_4
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowVoLteBadge:Z

    .line 261
    :cond_0
    const v6, 0x7f050032

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShow4GForLTE:Z

    .line 264
    const-string/jumbo v6, "ImsIconController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IMS icon enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mConfigShowImsIcon:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 265
    const-string/jumbo v9, ", icon Mode = "

    .line 264
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const v6, 0x10e0046

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 270
    .local v2, "imsMode":I
    const-string/jumbo v6, "ImsIconController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IMS Mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowNotReadyIcon:Z

    .line 273
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSupportCallingPlus:Z

    .line 274
    packed-switch v2, :pswitch_data_0

    .line 284
    :goto_5
    return-void

    .line 246
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "iconMode":I
    .end local v2    # "imsMode":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "override":Z
    goto/16 :goto_0

    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v3, v5

    .line 249
    goto/16 :goto_1

    .end local v3    # "override":Z
    .restart local v1    # "iconMode":I
    :cond_3
    move v6, v7

    .line 257
    goto :goto_2

    :cond_4
    move v6, v7

    .line 258
    goto :goto_3

    :cond_5
    move v6, v7

    .line 259
    goto :goto_4

    .line 276
    .restart local v2    # "imsMode":I
    :pswitch_0
    const v5, 0x7f05004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowNotReadyIcon:Z

    goto :goto_5

    .line 279
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSupportCallingPlus:Z

    goto :goto_5

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ImsIconController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    sget-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController;->sInstance:Lcom/android/systemui/statusbar/policy/ImsIconController;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/android/systemui/statusbar/policy/ImsIconController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ImsIconController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController;->sInstance:Lcom/android/systemui/statusbar/policy/ImsIconController;

    .line 182
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController;->sInstance:Lcom/android/systemui/statusbar/policy/ImsIconController;

    return-object v0
.end method

.method private refreshCallingPlusIcon()V
    .locals 5

    .prologue
    .line 373
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mCPEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoLteRegistered:Z

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoWifiRegistered:Z

    .line 376
    :goto_0
    const-string/jumbo v1, "ImsIconController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshCallingPlusIcon: visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotIMS:Ljava/lang/String;

    .line 383
    const v3, 0x7f080353

    .line 384
    const/4 v4, 0x0

    .line 382
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotIMS:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 388
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x1

    .local v0, "showIcon":Z
    goto :goto_0

    .end local v0    # "showIcon":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showIcon":Z
    goto :goto_0
.end method

.method private refreshVoLteIcon()V
    .locals 5

    .prologue
    .line 393
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoLteRegistered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mConfigShowImsIcon:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoLteIcon:Z

    xor-int/lit8 v1, v2, 0x1

    .line 395
    :goto_0
    const-string/jumbo v2, "ImsIconController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshVoLteIcon: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz v1, :cond_1

    .line 400
    const v0, 0x7f080428

    .line 401
    .local v0, "iconId":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowVoLteBadge:Z

    if-eqz v2, :cond_3

    .line 402
    const v0, 0x7f080456

    .line 406
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotIMS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 408
    .end local v0    # "iconId":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotIMS:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 409
    return-void

    .line 393
    :cond_2
    const/4 v1, 0x0

    .local v1, "showIcon":Z
    goto :goto_0

    .line 403
    .end local v1    # "showIcon":Z
    .restart local v0    # "iconId":I
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShow4GForLTE:Z

    if-nez v2, :cond_0

    .line 404
    const v0, 0x7f080429

    goto :goto_1
.end method

.method private refreshVoWifiIcon()V
    .locals 7

    .prologue
    .line 310
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mConfigShowImsIcon:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHideVoWifiIcon:Z

    if-eqz v4, :cond_1

    .line 312
    :cond_0
    const-string/jumbo v4, "ImsIconController"

    const-string/jumbo v5, "refreshVoWifiIcon: visibility = false"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotVoWifi:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 316
    return-void

    .line 320
    :cond_1
    const/4 v0, -0x1

    .line 322
    .local v0, "iconId":I
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoWifiRegistered:Z

    if-eqz v4, :cond_4

    .line 323
    sget-object v3, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_REGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    .line 330
    .local v3, "status":Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mCurrentVoWifiStatus:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    if-eq v3, v4, :cond_3

    .line 331
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mCurrentVoWifiStatus:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "resId":I
    const/4 v2, 0x1

    .line 334
    .local v2, "showIcon":Z
    sget-object v4, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_REGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    if-ne v3, v4, :cond_6

    .line 335
    const v1, 0x7f080457

    .line 342
    :goto_1
    if-eqz v2, :cond_2

    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotVoWifi:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 347
    :cond_2
    const-string/jumbo v4, "ImsIconController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshVoWifiIcon: visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotVoWifi:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 353
    .end local v1    # "resId":I
    .end local v2    # "showIcon":Z
    :cond_3
    return-void

    .line 324
    .end local v3    # "status":Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowNotReadyIcon:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWifiEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWifiConnected:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWfcEnabled:Z

    if-eqz v4, :cond_5

    .line 325
    sget-object v3, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_NOT_READY:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    .restart local v3    # "status":Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    goto :goto_0

    .line 327
    .end local v3    # "status":Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    :cond_5
    sget-object v3, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_UNREGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    .restart local v3    # "status":Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    goto :goto_0

    .line 336
    .restart local v1    # "resId":I
    .restart local v2    # "showIcon":Z
    :cond_6
    sget-object v4, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_NOT_READY:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    if-ne v3, v4, :cond_7

    .line 337
    const v1, 0x7f080458

    goto :goto_1

    .line 339
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateIMS(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 188
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 190
    .local v3, "subId":I
    const-string/jumbo v7, "ImsIconController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateIMS: intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.motorola.internal.intent.action.IMS_REGISTRATION_STATE_NOTIFICATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    const-string/jumbo v7, "com.motorola.internal.intent.extra.IMS_REGISTRATION_STATE"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 196
    .local v0, "IMSReg":Z
    const-string/jumbo v7, "com.motorola.internal.intent.extra.IMS_ENABLED_FEATURES"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    .line 197
    .local v1, "features":[Z
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/ImsIconController;->voiceOrVideoOverLTEEnabled([Z)Z

    move-result v5

    .line 198
    .local v5, "volteReg":Z
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/ImsIconController;->voiceOrVideoOverWifiEnabled([Z)Z

    move-result v4

    .line 199
    .local v4, "voWifiReg":Z
    const-string/jumbo v7, "ImsIconController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateIMS: registered from intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 200
    const-string/jumbo v9, ", LTE: "

    .line 199
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 201
    const-string/jumbo v9, ", WiFi: "

    .line 199
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v0, :cond_1

    .end local v5    # "volteReg":Z
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoLteRegistered:Z

    .line 203
    if-eqz v0, :cond_2

    .end local v4    # "voWifiReg":Z
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoWifiRegistered:Z

    .line 204
    const-string/jumbo v6, "subscription"

    invoke-virtual {p1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIMSSubId:I

    .line 224
    .end local v0    # "IMSReg":Z
    .end local v1    # "features":[Z
    :cond_0
    :goto_2
    const-string/jumbo v6, "ImsIconController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateIMS: registered over LTE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoLteRegistered:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 225
    const-string/jumbo v8, ", registered over WIFI: "

    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 225
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mVoWifiRegistered:Z

    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 226
    const-string/jumbo v8, ", DDS subID: "

    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->getIconConfig()V

    .line 234
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSupportCallingPlus:Z

    if-eqz v6, :cond_6

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->refreshCallingPlusIcon()V

    .line 241
    :goto_3
    return-void

    .restart local v0    # "IMSReg":Z
    .restart local v1    # "features":[Z
    .restart local v4    # "voWifiReg":Z
    .restart local v5    # "volteReg":Z
    :cond_1
    move v5, v6

    .line 202
    goto :goto_0

    .end local v5    # "volteReg":Z
    :cond_2
    move v4, v6

    .line 203
    goto :goto_1

    .line 205
    .end local v0    # "IMSReg":Z
    .end local v1    # "features":[Z
    .end local v4    # "voWifiReg":Z
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    const-string/jumbo v6, "subscription"

    invoke-virtual {p1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIMSSubId:I

    goto :goto_2

    .line 207
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 211
    const-string/jumbo v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "stateExtra":Ljava/lang/String;
    const-string/jumbo v6, "LOADED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 215
    return-void

    .line 219
    .end local v2    # "stateExtra":Ljava/lang/String;
    :cond_5
    return-void

    .line 237
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->refreshVoLteIcon()V

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->refreshVoWifiIcon()V

    goto :goto_3
.end method

.method private voiceOrVideoOverLTEEnabled([Z)Z
    .locals 4
    .param p1, "features"    # [Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 289
    aget-boolean v0, p1, v2

    if-nez v0, :cond_0

    .line 290
    aget-boolean v0, p1, v3

    .line 288
    if-eqz v0, :cond_1

    .line 291
    :cond_0
    return v3

    .line 293
    :cond_1
    return v2
.end method

.method private voiceOrVideoOverWifiEnabled([Z)Z
    .locals 2
    .param p1, "features"    # [Z

    .prologue
    const/4 v1, 0x3

    .line 297
    if-eqz p1, :cond_1

    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 298
    const/4 v0, 0x2

    aget-boolean v0, p1, v0

    if-nez v0, :cond_0

    .line 299
    aget-boolean v0, p1, v1

    .line 297
    if-eqz v0, :cond_1

    .line 300
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 10
    .param p1, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 113
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    const v5, 0x1040610

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotIMS:Ljava/lang/String;

    .line 114
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    const v5, 0x104061e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotVoWifi:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotIMS:Ljava/lang/String;

    const v6, 0x7f080428

    invoke-interface {v4, v5, v6, v9}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotIMS:Ljava/lang/String;

    invoke-interface {v4, v5, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 121
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotVoWifi:Ljava/lang/String;

    const v6, 0x7f080457

    invoke-interface {v4, v5, v6, v9}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSlotVoWifi:Ljava/lang/String;

    invoke-interface {v4, v5, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 125
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.motorola.internal.intent.action.IMS_REGISTRATION_STATE_NOTIFICATION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v2, Lcom/android/systemui/statusbar/policy/ImsIconController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/ImsIconController$1;-><init>(Lcom/android/systemui/statusbar/policy/ImsIconController;)V

    .line 140
    .local v2, "imsReceiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mSupportCallingPlus:Z

    if-eqz v4, :cond_1

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/policy/ImsIconController$2;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/policy/ImsIconController$2;-><init>(Lcom/android/systemui/statusbar/policy/ImsIconController;Landroid/os/Handler;)V

    .line 155
    .local v0, "cpSettingsObserver":Landroid/database/ContentObserver;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 157
    const-string/jumbo v5, "sprint_cp_user_preference"

    .line 156
    invoke-static {v5}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    invoke-virtual {v0, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 175
    .end local v0    # "cpSettingsObserver":Landroid/database/ContentObserver;
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowNotReadyIcon:Z

    if-eqz v4, :cond_0

    .line 164
    new-instance v3, Lcom/android/systemui/statusbar/policy/ImsIconController$3;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/policy/ImsIconController$3;-><init>(Lcom/android/systemui/statusbar/policy/ImsIconController;Landroid/os/Handler;)V

    .line 170
    .local v3, "wfcSettingsObserver":Landroid/database/ContentObserver;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "wfc_ims_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 170
    invoke-virtual {v4, v5, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    invoke-virtual {v3, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method

.method public onWifiConnectionStateChanged(ZZ)V
    .locals 2
    .param p1, "wifiEnabled"    # Z
    .param p2, "wifiConnected"    # Z

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mShowNotReadyIcon:Z

    if-eqz v0, :cond_0

    .line 358
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWifiEnabled:Z

    .line 359
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mWifiConnected:Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/ImsIconController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/ImsIconController$4;-><init>(Lcom/android/systemui/statusbar/policy/ImsIconController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    :cond_0
    return-void
.end method
