.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# instance fields
.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDismissing:Z

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMotDpmEnabled:Z

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPassword"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    const v1, 0x1120083

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMotDpmEnabled:Z

    .line 65
    return-void
.end method

.method private onPasswordChecked(IZIZ)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPassword"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 193
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportBackupUnlock(Z)V

    .line 194
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    .line 195
    .local v2, "dismissKeyguard":Z
    :goto_0
    if-eqz p2, :cond_2

    .line 196
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, p1, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 197
    if-eqz v2, :cond_0

    .line 198
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v5, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 222
    :cond_0
    :goto_1
    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 223
    return-void

    .line 194
    .end local v2    # "dismissKeyguard":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "dismissKeyguard":Z
    goto :goto_0

    .line 202
    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMotDpmEnabled:Z

    if-eqz v3, :cond_3

    .line 203
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v3, v4}, Lcom/android/internal/widget/MotDpmLockPatternUtils;->checkRecoveryPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulRecoveryUnlockAttempt(I)V

    .line 205
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v5, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 208
    :cond_3
    if-eqz p4, :cond_4

    .line 209
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, p1, v6, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 210
    if-lez p3, :cond_4

    .line 211
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 213
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 216
    .end local v0    # "deadline":J
    :cond_4
    if-nez p3, :cond_0

    .line 217
    if-eqz p4, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showMaxUnlockPolicyMessage()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 218
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1
.end method

.method private showMaxUnlockPolicyMessage()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 227
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 228
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 229
    const/4 v5, 0x0

    .line 228
    invoke-virtual {v4, v5, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 230
    .local v1, "maxAttempts":I
    if-lez v1, :cond_0

    .line 233
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 235
    .local v0, "attempts":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 236
    const v6, 0x7f1102ce

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 238
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v4, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    return v8

    .line 241
    .end local v0    # "attempts":I
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    return v6
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 353
    const/4 v1, 0x3

    .line 352
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 356
    :cond_0
    return-void
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromtReasonStringRes(I)I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f1102cb

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 255
    .local v6, "elapsedRealtime":J
    sub-long v0, p1, v6

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v8, v0

    .line 256
    .local v8, "secondsInFuture":J
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    mul-long v2, v8, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 271
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 116
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 103
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 104
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 105
    const v1, 0x7f0a0148

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 107
    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 108
    .local v0, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 295
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 299
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 301
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 306
    return-void
.end method

.method protected onUserInput()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 82
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 84
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 86
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(ZZ)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 70
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 76
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public showPromptReason(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 315
    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromtReasonStringRes(I)I

    move-result v1

    .line 317
    .local v1, "promtReasonStringRes":I
    if-eqz v1, :cond_1

    .line 320
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 321
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 320
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    .line 322
    .local v0, "fpAvailable":Z
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v1, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessageWithMoreInfoButton(II)V

    .line 339
    .end local v0    # "fpAvailable":Z
    .end local v1    # "promtReasonStringRes":I
    :cond_1
    :goto_0
    return-void

    .line 324
    .restart local v0    # "fpAvailable":Z
    .restart local v1    # "promtReasonStringRes":I
    :cond_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 325
    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    .line 327
    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 328
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 128
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    if-eqz v2, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 136
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 137
    .local v1, "userId":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_2

    .line 140
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 141
    invoke-direct {p0, v1, v3, v3, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    .line 142
    return-void

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 147
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V

    .line 149
    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 189
    return-void
.end method
