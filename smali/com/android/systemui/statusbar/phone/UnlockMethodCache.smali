.class public Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.super Ljava/lang/Object;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;,
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCanSkipBouncer:Z

.field private mFaceIDUnlockRunning:Z

.field private mFaceUnlockRunning:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecure:Z

.field private mTrustManaged:Z

.field private mTrusted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .param p1, "updateAlways"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 50
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .line 119
    .local v0, "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;->onUnlockMethodStateChanged()V

    goto :goto_0

    .line 121
    .end local v0    # "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 9
    .param p1, "updateAlways"    # Z

    .prologue
    .line 90
    const-string/jumbo v8, "UnlockMethodCache#update"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    .line 92
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    .line 93
    .local v4, "secure":Z
    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 94
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    .line 95
    .local v5, "trustManaged":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v6

    .line 96
    .local v6, "trusted":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceUnlockRunning(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 97
    move v3, v5

    .line 99
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceIDUnlockRunning(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 100
    move v2, v5

    .line 102
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    if-ne v4, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    if-eq v0, v8, :cond_6

    :cond_0
    const/4 v1, 0x1

    .line 105
    .local v1, "changed":Z
    :goto_3
    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 106
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    .line 108
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrusted:Z

    .line 109
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceIDUnlockRunning:Z

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->notifyListeners()V

    .line 114
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 115
    return-void

    .line 93
    .end local v1    # "changed":Z
    .end local v5    # "trustManaged":Z
    .end local v6    # "trusted":Z
    :cond_3
    const/4 v0, 0x1

    .local v0, "canSkipBouncer":Z
    goto :goto_0

    .line 96
    .end local v0    # "canSkipBouncer":Z
    .restart local v5    # "trustManaged":Z
    .restart local v6    # "trusted":Z
    :cond_4
    const/4 v3, 0x0

    .local v3, "faceUnlockRunning":Z
    goto :goto_1

    .line 99
    .end local v3    # "faceUnlockRunning":Z
    :cond_5
    const/4 v2, 0x0

    .local v2, "faceIDUnlockRunning":Z
    goto :goto_2

    .line 103
    .end local v2    # "faceIDUnlockRunning":Z
    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    if-ne v5, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    if-ne v3, v8, :cond_0

    .line 104
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceIDUnlockRunning:Z

    if-eq v2, v8, :cond_7

    const/4 v1, 0x1

    .restart local v1    # "changed":Z
    goto :goto_3

    .end local v1    # "changed":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "changed":Z
    goto :goto_3
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public canSkipBouncer()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    return v0
.end method

.method public isFaceIDUnlockRunning()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceIDUnlockRunning:Z

    return v0
.end method

.method public isFaceUnlockRunning()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    return v0
.end method

.method public isMethodSecure()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    return v0
.end method

.method public isTrustManaged()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrusted:Z

    return v0
.end method
