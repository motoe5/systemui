.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$1;,
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# instance fields
.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field private mDSSkipButton:Landroid/widget/ImageButton;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSlotId:I

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardSimPinView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "-value"    # Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "remaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardSimPinView;I)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardSimPinView;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->showDialogWithoutBackButton(Landroid/app/Dialog;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 64
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 97
    return-void
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1102ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 188
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    .line 191
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v3, v4

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 190
    const/high16 v1, 0x7f0f0000

    .line 189
    invoke-virtual {v2, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1102ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 350
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 352
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 353
    const v2, 0x7f110381

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 355
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 356
    const/16 v3, 0x7d9

    .line 355
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 360
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    const v2, 0x7f1102c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 341
    const/16 v1, 0x7d9

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private showDialogWithoutBackButton(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 366
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 367
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 209
    const v0, 0x7f0a027f

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 268
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->resetState()V

    .line 175
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 274
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 216
    const v0, 0x7f0a0134

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 261
    :cond_1
    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 285
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 287
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 101
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 103
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 106
    .local v4, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 108
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v9, :cond_0

    .line 109
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v10

    invoke-interface {v9, v11, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 112
    :cond_0
    return-void

    .line 115
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v9

    iput v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 116
    iget v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 117
    iget v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    .line 118
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 119
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 121
    .local v7, "rez":Landroid/content/res/Resources;
    const/4 v0, -0x1

    .line 122
    .local v0, "color":I
    if-ge v1, v12, :cond_5

    .line 123
    const v9, 0x7f1102c3

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 126
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_2

    .line 127
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    :cond_2
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    .line 166
    :cond_3
    :goto_0
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v9, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 169
    .end local v0    # "color":I
    .end local v1    # "count":I
    .end local v5    # "msg":Ljava/lang/String;
    .end local v7    # "rez":Landroid/content/res/Resources;
    :cond_4
    return-void

    .line 132
    .restart local v0    # "color":I
    .restart local v1    # "count":I
    .restart local v7    # "rez":Landroid/content/res/Resources;
    :cond_5
    iget v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 133
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 134
    .local v2, "displayName":Ljava/lang/CharSequence;
    :goto_1
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v13

    const v10, 0x7f1102c4

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .restart local v5    # "msg":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 136
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 139
    :cond_6
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getValidSimCount()I

    move-result v9

    if-lt v9, v12, :cond_a

    .line 140
    const v6, 0x7f0803cd

    .line 141
    .local v6, "resId":I
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockedSimCount()I

    move-result v9

    if-lt v9, v12, :cond_7

    .line 142
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v8

    .line 143
    .local v8, "subId":I
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 144
    iget v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 147
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 154
    .end local v8    # "subId":I
    :cond_7
    :goto_2
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_3

    .line 155
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 133
    .end local v2    # "displayName":Ljava/lang/CharSequence;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "resId":I
    :cond_8
    const-string/jumbo v2, ""

    .restart local v2    # "displayName":Ljava/lang/CharSequence;
    goto :goto_1

    .line 150
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "resId":I
    .restart local v8    # "subId":I
    :cond_9
    const v6, 0x7f0803cc

    goto :goto_2

    .line 159
    .end local v6    # "resId":I
    .end local v8    # "subId":I
    :cond_a
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 160
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_3

    .line 161
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 372
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f110291

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 377
    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(ZZ)V

    .line 378
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 379
    return-void

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->showDialogWithoutBackButton(Landroid/app/Dialog;)V

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v1, :cond_2

    .line 387
    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 432
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->start()V

    .line 434
    :cond_2
    return-void
.end method
