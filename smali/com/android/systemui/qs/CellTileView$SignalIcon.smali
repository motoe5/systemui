.class public Lcom/android/systemui/qs/CellTileView$SignalIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "CellTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/CellTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignalIcon"
.end annotation


# instance fields
.field private final mState:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 67
    iput p1, p0, Lcom/android/systemui/qs/CellTileView$SignalIcon;->mState:I

    .line 68
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    invoke-static {p1}, Lcom/android/systemui/qs/CellTileView;->-wrap0(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/qs/CellTileView$SignalIcon;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setLevel(I)Z

    .line 80
    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/systemui/qs/CellTileView$SignalIcon;->mState:I

    return v0
.end method
