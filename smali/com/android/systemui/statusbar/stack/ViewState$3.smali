.class final Lcom/android/systemui/statusbar/stack/ViewState$3;
.super Ljava/lang/Object;
.source "ViewState.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getAnimationEndTag()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f0a0243

    return v0
.end method

.method public getAnimationStartTag()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0a0244

    return v0
.end method

.method public getAnimatorTag()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0a0245

    return v0
.end method

.method public getProperty()Landroid/util/Property;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-object v0
.end method
