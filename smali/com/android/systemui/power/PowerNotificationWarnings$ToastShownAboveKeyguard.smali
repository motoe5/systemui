.class Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastShownAboveKeyguard"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;
    }
.end annotation


# instance fields
.field hideToastRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mToastView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;
    .param p1, "-value"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mToastView:Landroid/view/View;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->hideToastRunnable:Ljava/lang/Runnable;

    .line 565
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mContext:Landroid/content/Context;

    .line 566
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mWindowManager:Landroid/view/WindowManager;

    .line 567
    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 570
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mToastView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 572
    const/4 v5, 0x0

    return v5

    .line 574
    :cond_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 575
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 576
    const/4 v5, -0x3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 577
    const/16 v5, 0x7de

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    const/16 v5, 0x98

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 582
    const/16 v5, 0x11

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 583
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 585
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d012e

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mToastView:Landroid/view/View;

    .line 586
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mToastView:Landroid/view/View;

    const v6, 0x7f0a02af

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 587
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 589
    .local v1, "color":I
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    const v0, 0x1080096

    .line 592
    .local v0, "backgroundResourceId":I
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mToastView:Landroid/view/View;

    const v6, 0x1080096

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 595
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->mToastView:Landroid/view/View;

    invoke-interface {v5, v6, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    const/16 v4, 0xdac

    .line 599
    .local v4, "toastDuration":I
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->hideToastRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xdac

    invoke-virtual {v3, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    const/4 v5, 0x1

    return v5
.end method
