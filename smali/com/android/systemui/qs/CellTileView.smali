.class public Lcom/android/systemui/qs/CellTileView;
.super Lcom/android/systemui/qs/SignalTileView;
.source "CellTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/CellTileView$SignalIcon;
    }
.end annotation


# instance fields
.field private final mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/qs/CellTileView;->isDark(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/CellTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/CellTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/CellTileView;->isDark(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    const v2, 0x7f070244

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setIntrinsicSize(I)V

    .line 41
    return-void
.end method

.method private static isDark(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const v0, 0x1010030

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    const/high16 v1, -0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    const v2, 0x7f0a021d

    .line 45
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    instance-of v0, v0, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    if-nez v0, :cond_0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/SignalTileView;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 47
    return-void

    .line 51
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    check-cast v0, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    invoke-virtual {v0}, Lcom/android/systemui/qs/CellTileView$SignalIcon;->getState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setLevel(I)Z

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 56
    :cond_1
    return-void
.end method
