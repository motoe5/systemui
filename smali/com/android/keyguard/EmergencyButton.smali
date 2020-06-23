.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$1;,
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;,
        Lcom/android/keyguard/EmergencyButton$PhoneState;
    }
.end annotation


# static fields
.field private static final INTENT_EMERGENCY_DIAL:Landroid/content/Intent;


# instance fields
.field private mDownX:I

.field private mDownY:I

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsVoiceCapable:Z

.field private mLastClickTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressWasDragged:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isFastClick()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/EmergencyButton;Lcom/android/keyguard/EmergencyButton$PhoneState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/EmergencyButton;
    .param p1, "state"    # Lcom/android/keyguard/EmergencyButton$PhoneState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/keyguard/EmergencyButton$PhoneState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "com.android.phone"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    const/high16 v1, 0x14800000

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/EmergencyButton;->mLastClickTime:J

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    const v1, 0x112011b

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    const v1, 0x1120081

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 102
    new-instance v0, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 103
    return-void
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isFastClick()Z
    .locals 6

    .prologue
    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 289
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/keyguard/EmergencyButton;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 290
    iput-wide v0, p0, Lcom/android/keyguard/EmergencyButton;->mLastClickTime:J

    .line 291
    const/4 v2, 0x0

    return v2

    .line 293
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method private resumeCall()V
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 259
    return-void
.end method

.method private updateEmergencyCallButton(Lcom/android/keyguard/EmergencyButton$PhoneState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/keyguard/EmergencyButton$PhoneState;

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "visible":Z
    iget-boolean v3, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    if-eqz v3, :cond_0

    .line 221
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyButton$PhoneState;->isInCall()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    .line 222
    const/4 v2, 0x1

    .line 235
    .end local v2    # "visible":Z
    :cond_0
    :goto_1
    if-eqz v2, :cond_6

    .line 236
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 239
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyButton$PhoneState;->isInCall()Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_5

    .line 240
    const v1, 0x1040322

    .line 244
    .local v1, "textId":I
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    .line 248
    .end local v1    # "textId":I
    :goto_4
    return-void

    .line 221
    .restart local v2    # "visible":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v3

    goto :goto_0

    .line 224
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v0

    .line 226
    .local v0, "simLocked":Z
    if-eqz v0, :cond_3

    .line 228
    iget-boolean v2, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .local v2, "visible":Z
    goto :goto_1

    .line 231
    .local v2, "visible":Z
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .local v2, "visible":Z
    goto :goto_1

    .line 239
    .end local v0    # "simLocked":Z
    .end local v2    # "visible":Z
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v3

    goto :goto_2

    .line 242
    :cond_5
    const v1, 0x1040307

    .restart local v1    # "textId":I
    goto :goto_3

    .line 246
    .end local v1    # "textId":I
    :cond_6
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 109
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 182
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 115
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 120
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 122
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v0, Lcom/android/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 152
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 157
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 158
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_1

    .line 159
    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    .line 160
    iput v3, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    .line 161
    iput-boolean v6, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    .line 170
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 163
    :cond_1
    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 164
    .local v2, "xDiff":I
    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 165
    .local v4, "yDiff":I
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 166
    .local v0, "touchSlop":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v0, :cond_0

    .line 167
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/Button;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .line 252
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 193
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-interface {v1}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 209
    :cond_0
    :goto_1
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EmergencyButton"

    const-string/jumbo v2, "Failed to stop app pinning"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 207
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 205
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public updateEmergencyCallButton()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/keyguard/EmergencyButton$PhoneState;)V

    .line 214
    return-void
.end method
