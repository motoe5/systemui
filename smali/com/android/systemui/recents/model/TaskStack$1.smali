.class Lcom/android/systemui/recents/model/TaskStack$1;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack$1;->this$0:Lcom/android/systemui/recents/model/TaskStack;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)I
    .locals 4
    .param p1, "o1"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "o2"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 618
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x1

    return v0

    .line 620
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 621
    const/4 v0, -0x1

    return v0

    .line 623
    :cond_1
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long v0, v0

    iget v2, p2, Lcom/android/systemui/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 616
    check-cast p1, Lcom/android/systemui/recents/model/Task;

    check-cast p2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/model/TaskStack$1;->compare(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method
