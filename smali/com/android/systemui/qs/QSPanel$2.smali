.class Lcom/android/systemui/qs/QSPanel$2;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 423
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->-get0(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->-get0(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 425
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 426
    .local v0, "loc":[I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 427
    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 428
    .local v1, "x":I
    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 429
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->-get0(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->show(II)V

    .line 433
    .end local v0    # "loc":[I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method
