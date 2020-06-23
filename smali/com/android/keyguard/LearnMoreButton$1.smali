.class Lcom/android/keyguard/LearnMoreButton$1;
.super Ljava/lang/Object;
.source "LearnMoreButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/LearnMoreButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LearnMoreButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LearnMoreButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/LearnMoreButton;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/LearnMoreButton$1;->this$0:Lcom/android/keyguard/LearnMoreButton;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/LearnMoreButton$1;->this$0:Lcom/android/keyguard/LearnMoreButton;

    invoke-virtual {v0}, Lcom/android/keyguard/LearnMoreButton;->showLearnMoreInfo()V

    .line 43
    return-void
.end method
