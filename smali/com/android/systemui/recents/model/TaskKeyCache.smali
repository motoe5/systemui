.class public abstract Lcom/android/systemui/recents/model/TaskKeyCache;
.super Ljava/lang/Object;
.source "TaskKeyCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyCache;, "Lcom/android/systemui/recents/model/TaskKeyCache<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    .line 27
    return-void
.end method


# virtual methods
.method final evictAll()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyCache;, "Lcom/android/systemui/recents/model/TaskKeyCache<TV;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskKeyCache;->evictAllCache()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 83
    return-void
.end method

.method protected abstract evictAllCache()V
.end method

.method final get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyCache;, "Lcom/android/systemui/recents/model/TaskKeyCache<TV;>;"
    iget v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskKeyCache;->getCacheEntry(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyCache;, "Lcom/android/systemui/recents/model/TaskKeyCache<TV;>;"
    const/4 v6, 0x0

    .line 46
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 47
    .local v0, "lastKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    if-eqz v0, :cond_1

    .line 48
    iget v1, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    if-ne v1, v2, :cond_0

    .line 49
    iget-wide v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskKeyCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 53
    return-object v6

    .line 58
    :cond_1
    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/model/TaskKeyCache;->getCacheEntry(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getCacheEntry(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method final put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyCache;, "Lcom/android/systemui/recents/model/TaskKeyCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    const-string/jumbo v0, "TaskKeyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected null key or value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyCache;->putCacheEntry(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected abstract putCacheEntry(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation
.end method

.method final remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    .line 75
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyCache;, "Lcom/android/systemui/recents/model/TaskKeyCache<TV;>;"
    iget v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskKeyCache;->removeCacheEntry(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    return-void
.end method

.method protected abstract removeCacheEntry(I)V
.end method
