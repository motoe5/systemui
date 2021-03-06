.class public Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;
.super Ljava/lang/Object;
.source "DozeScreenStatePreventingAdapter.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;


# instance fields
.field private final mInner:Lcom/android/systemui/doze/DozeMachine$Service;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 0
    .param p1, "inner"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->mInner:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 34
    return-void
.end method

.method private static isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z
    .locals 1
    .param p0, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;
    .locals 1
    .param p0, "inner"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p1, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    move-object p0, v0

    .end local p0    # "inner":Lcom/android/systemui/doze/DozeMachine$Service;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->mInner:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    .line 39
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 43
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 44
    :cond_0
    const/4 p1, 0x2

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->mInner:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    .line 47
    return-void
.end method
