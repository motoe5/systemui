.class Landroid/support/v17/leanback/widget/WindowAlignment;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

.field private mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

.field private mOrientation:I

.field private mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

.field public final vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mOrientation:I

    .line 338
    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    const-string/jumbo v1, "vertical"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 340
    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    const-string/jumbo v1, "horizontal"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 342
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 344
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 26
    return-void
.end method


# virtual methods
.method public final mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->reset()V

    .line 371
    return-void
.end method

.method public final secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    return-object v0
.end method

.method public final setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 355
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mOrientation:I

    .line 356
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mOrientation:I

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    .line 361
    iget-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "horizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 376
    iget-object v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "; vertical="

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 378
    iget-object v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
