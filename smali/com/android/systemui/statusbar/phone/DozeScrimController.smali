.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeScrimController$1;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$2;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$3;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$4;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$5;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBehindAnimator:Landroid/animation/Animator;

.field private mBehindTarget:F

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mDozingAborted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInFrontAnimator:Landroid/animation/Animator;

.field private mInFrontTarget:F

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLandroid/animation/Animator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p1, "inFront"    # Z
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZF)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p1, "inFront"    # Z
    .param p2, "alpha"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozeAlpha(ZF)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "DozeScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V
    .locals 1
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    .line 310
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    .line 318
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 62
    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 200
    :cond_1
    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeScrimController"

    const-string/jumbo v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    .line 178
    :cond_1
    return-void
.end method

.method private getCurrentAnimator(Z)Landroid/animation/Animator;
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 254
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private getCurrentTarget(Z)F
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 242
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private getDozeAlpha(Z)F
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeInFrontAlpha()F

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeBehindAlpha()F

    move-result v0

    goto :goto_0
.end method

.method private pulseFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 189
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 191
    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 184
    :cond_0
    return-void
.end method

.method private setCurrentAnimator(ZLandroid/animation/Animator;)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private setCurrentTarget(ZF)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "target"    # F

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private setDozeAlpha(ZF)V
    .locals 1
    .param p1, "inFront"    # Z
    .param p2, "alpha"    # F

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    if-eqz p1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    goto :goto_0
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V
    .locals 9
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 204
    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 210
    .local v1, "current":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 211
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentTarget(Z)F

    move-result v2

    .line 212
    .local v2, "currentTarget":F
    cmpl-float v3, v2, p2

    if-nez v3, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 217
    .end local v2    # "currentTarget":F
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getDozeAlpha(Z)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 218
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 227
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$7;

    invoke-direct {v3, p0, p1, p6}, Lcom/android/systemui/statusbar/phone/DozeScrimController$7;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentTarget(ZF)V

    .line 239
    return-void
.end method


# virtual methods
.method public abortDoze()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortPulsing()V

    .line 144
    return-void
.end method

.method public abortPulsing()V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    .line 131
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 133
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 136
    :cond_1
    return-void
.end method

.method public extendPulse()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public isPulsing()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 8

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 149
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 151
    .local v0, "pickupOrDoubleTap":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration(Z)I

    move-result v1

    int-to-long v4, v1

    .line 152
    if-eqz v0, :cond_3

    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 153
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    .line 150
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 155
    .end local v0    # "pickupOrDoubleTap":Z
    :cond_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "pickupOrDoubleTap":Z
    goto :goto_0

    .line 149
    .end local v0    # "pickupOrDoubleTap":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "pickupOrDoubleTap":Z
    goto :goto_0

    .line 152
    :cond_3
    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_2

    .line 115
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 116
    return-void

    .line 121
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 122
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 7
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v4, 0x2bc

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 65
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 66
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    .line 68
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v1, :cond_2

    .line 69
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 88
    :goto_1
    return-void

    :cond_1
    move v3, v0

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    .line 75
    if-eqz p2, :cond_3

    .line 78
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 76
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    .line 81
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 79
    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_1
.end method

.method public setWakeAndUnlocking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 98
    :cond_0
    return-void
.end method
