.class Lcom/android/systemui/egg/MLand$Star;
.super Lcom/android/systemui/egg/MLand$Scenery;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Star"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/systemui/egg/MLand;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1449
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Star;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1450
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Scenery;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 1451
    const v0, 0x7f080304

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    .line 1452
    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MIN:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Star;->h:I

    iput v0, p0, Lcom/android/systemui/egg/MLand$Star;->w:I

    .line 1453
    iput v2, p0, Lcom/android/systemui/egg/MLand$Star;->z:F

    iput v2, p0, Lcom/android/systemui/egg/MLand$Star;->v:F

    .line 1454
    return-void
.end method
