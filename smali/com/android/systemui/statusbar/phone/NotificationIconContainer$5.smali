.class final Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;
.super Lcom/android/systemui/statusbar/stack/AnimationProperties;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 1
    return-void
.end method


# virtual methods
.method public getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    return-object v0
.end method