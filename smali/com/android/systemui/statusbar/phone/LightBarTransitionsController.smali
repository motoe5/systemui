.class public Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.super Ljava/lang/Object;
.source "LightBarTransitionsController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;,
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;
    }
.end annotation


# instance fields
.field private final mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

.field private mDarkIntensity:F

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNextDarkIntensity:F

.field private mPendingDarkIntensity:F

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applier"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 72
    return-void
.end method

.method private animateIconTint(FJJ)V
    .locals 4
    .param p1, "targetDarkIntensity"    # F
    .param p2, "delay"    # J
    .param p4, "duration"    # J

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 162
    return-void

    .line 164
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 167
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$C8S9kJaaTlzVq3LYiZGDd0cUnJ4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$C8S9kJaaTlzVq3LYiZGDd0cUnJ4;-><init>(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 172
    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 153
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 154
    return-void
.end method

.method private setIconTintInternal(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    .line 177
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    .line 100
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 101
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 103
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 104
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 95
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_2

    .line 112
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 113
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 114
    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p3

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 127
    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 128
    return-void

    .line 117
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 122
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 123
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 77
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 181
    const-string/jumbo v0, "  mTransitionDeferring="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 184
    const-string/jumbo v0, "   mTransitionDeferringStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "   mTransitionDeferringDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 189
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 191
    :cond_0
    const-string/jumbo v0, "  mTransitionPending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 192
    const-string/jumbo v0, " mTintChangePending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 194
    const-string/jumbo v0, "  mPendingDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 195
    const-string/jumbo v0, " mDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 196
    const-string/jumbo v0, " mNextDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 197
    return-void
.end method

.method public getCurrentDarkIntensity()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_LightBarTransitionsController_6016(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const-string/jumbo v0, "dark_intensity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    .line 87
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 82
    .local v0, "intensity":F
    :goto_0
    const-string/jumbo v1, "dark_intensity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 83
    return-void

    .line 81
    .end local v0    # "intensity":F
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .restart local v0    # "intensity":F
    goto :goto_0
.end method

.method public setIconsDark(ZZ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 131
    if-nez p2, :cond_1

    .line 132
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    .line 142
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v4, :cond_3

    .line 134
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->deferIconTintChange(F)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 135
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v4, :cond_5

    .line 136
    if-eqz p1, :cond_4

    move v1, v0

    .line 137
    :cond_4
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 138
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    move-object v0, p0

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_1

    .line 140
    :cond_5
    if-eqz p1, :cond_6

    move v1, v0

    :cond_6
    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_1
.end method
