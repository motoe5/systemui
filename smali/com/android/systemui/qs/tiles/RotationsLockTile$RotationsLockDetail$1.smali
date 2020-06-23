.class Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;
.super Ljava/lang/Object;
.source "RotationsLockTile.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;->this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "newState":I
    const v1, 0x7f0a0236

    if-ne p2, v1, :cond_1

    .line 266
    const/4 v0, 0x1

    .line 270
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;->this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-get1(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 267
    :cond_1
    const v1, 0x7f0a0235

    if-ne p2, v1, :cond_0

    .line 268
    const/4 v0, 0x2

    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;->this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-get0(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;->this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;->this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-get1(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(I)V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;->this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->showDetail(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;->this$1:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-wrap0(Lcom/android/systemui/qs/tiles/RotationsLockTile;Ljava/lang/Object;)V

    .line 277
    return-void
.end method
