.class public Landroid/support/v17/leanback/widget/Grid$Location;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Grid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public row:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "row"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    .line 125
    return-void
.end method
