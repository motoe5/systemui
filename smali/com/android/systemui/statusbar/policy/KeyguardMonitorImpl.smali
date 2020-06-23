.class public Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMonitorImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSkipBouncer:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field private mKeyguardGoingAway:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mListening:Z

.field private mOccluded:Z

.field private mSecure:Z

.field private mShowing:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -com_android_systemui_statusbar_policy_KeyguardMonitorImpl-mthref-0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 0

    .prologue
    .line 120
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardShowingChanged()V

    return-void
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 59
    return-void
.end method

.method private notifyKeyguardChanged()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$jdGnvbrC24zMRHWtQAiy15iDGyk;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$jdGnvbrC24zMRHWtQAiy15iDGyk;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 121
    return-void
.end method

.method private updateCanSkipBouncerState()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    .line 116
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 65
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 70
    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public canSkipBouncer()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    return v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    return v0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardGoingAway()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return v0
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    return v0
.end method

.method public notifyKeyguardDoneFading()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    .line 132
    return-void
.end method

.method public notifyKeyguardFadingAway(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    .line 125
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    .line 126
    iput-wide p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    .line 127
    return-void
.end method

.method public notifyKeyguardGoingAway(Z)V
    .locals 0
    .param p1, "keyguardGoingAway"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    .line 156
    return-void
.end method

.method public notifyKeyguardState(ZZZ)V
    .locals 1
    .param p1, "showing"    # Z
    .param p2, "secure"    # Z
    .param p3, "occluded"    # Z

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    if-ne v0, p3, :cond_0

    return-void

    .line 98
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    .line 99
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    .line 100
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    .line 102
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    .line 108
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-eqz v0, :cond_0

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 78
    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method
