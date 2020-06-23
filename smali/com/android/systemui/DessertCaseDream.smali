.class public Lcom/android/systemui/DessertCaseDream;
.super Landroid/service/dreams/DreamService;
.source "DessertCaseDream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DessertCaseDream$1;
    }
.end annotation


# instance fields
.field private mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

.field private final mHandler:Landroid/os/Handler;

.field private mView:Lcom/android/systemui/DessertCaseView;

.field private final mViewRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/DessertCaseDream;)Lcom/android/systemui/DessertCaseView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/DessertCaseDream;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lcom/android/systemui/DessertCaseDream$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseDream$1;-><init>(Lcom/android/systemui/DessertCaseDream;)V

    iput-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mViewRunnable:Ljava/lang/Runnable;

    .line 22
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseDream;->setInteractive(Z)V

    .line 40
    new-instance v0, Lcom/android/systemui/DessertCaseView;

    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    .line 42
    new-instance v0, Lcom/android/systemui/DessertCaseView$RescalingContainer;

    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui/DessertCaseView;)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseDream;->setContentView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public onDreamingStarted()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseDream;->mViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseDream;->mViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->stop()V

    .line 60
    return-void
.end method
