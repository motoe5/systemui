.class final Lcom/android/systemui/recents/views/TaskView$1;
.super Landroid/util/FloatProperty;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/recents/views/TaskView;)Ljava/lang/Float;
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskView$1;->get(Lcom/android/systemui/recents/views/TaskView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 0
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "dimAlpha"    # F

    .prologue
    .line 87
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setDimAlphaWithoutHeader(F)V

    .line 88
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskView$1;->setValue(Lcom/android/systemui/recents/views/TaskView;F)V

    return-void
.end method
