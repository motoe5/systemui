.class Lcom/android/systemui/recents/model/FilteredTaskList;
.super Ljava/lang/Object;
.source "TaskStack.java"


# instance fields
.field mFilter:Lcom/android/systemui/recents/model/TaskFilter;

.field mFilteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTaskIndices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    .line 91
    return-void
.end method

.method private updateFilteredTaskIndices()V
    .locals 6

    .prologue
    .line 202
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 203
    .local v2, "taskCount":I
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 206
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-void
.end method

.method private updateFilteredTasks()V
    .locals 6

    .prologue
    .line 178
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v4, :cond_2

    .line 181
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 182
    .local v3, "taskIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 183
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 184
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 185
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 189
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 190
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v4, v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Landroid/util/SparseArray;Lcom/android/systemui/recents/model/Task;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskCount":I
    .end local v3    # "taskIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTaskIndices()V

    .line 198
    return-void
.end method


# virtual methods
.method contains(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method indexOf(Lcom/android/systemui/recents/model/Task;)I
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 163
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "insertIndex"    # I
    .param p3, "newStackId"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 127
    .local v0, "taskIndex":I
    if-eq v0, p2, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    if-ge v0, p2, :cond_0

    .line 130
    add-int/lit8 p2, p2, -0x1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/systemui/recents/model/Task;->setStackId(I)V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 139
    return-void
.end method

.method remove(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    .local v0, "removed":Z
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 153
    return v0

    .line 155
    .end local v0    # "removed":Z
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method set(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 146
    return-void
.end method

.method setFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z
    .locals 2
    .param p1, "filter"    # Lcom/android/systemui/recents/model/TaskFilter;

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v0, "prevFilteredTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x1

    return v1

    .line 106
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method size()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
