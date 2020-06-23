.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoader$1;
    }
.end annotation


# instance fields
.field private final mActivityInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultTaskBarBackgroundColor:I

.field mDefaultTaskViewBackgroundColor:I

.field private final mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

.field private final mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field private final mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

.field private final mMaxIconCacheSize:I

.field private final mMaxThumbnailCacheSize:I

.field private mNumVisibleTasksLoaded:I

.field private final mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyStrongCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyStrongCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_systemui_recents_model_RecentsTaskLoader-mthref-0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setTaskLoadQueueIdle(Z)V

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v4, Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    .line 273
    new-instance v4, Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    .line 283
    new-instance v4, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 282
    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 295
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0600b7

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 294
    iput v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    .line 297
    const v4, 0x7f0600bb

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 296
    iput v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    .line 298
    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 299
    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 300
    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 304
    .local v1, "iconCacheSize":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .local v0, "icon":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 306
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 309
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    .line 310
    .local v2, "numRecentTasks":I
    new-instance v4, Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 311
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 310
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .line 312
    new-instance v4, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 313
    new-instance v4, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 314
    new-instance v4, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v4, v2, v5}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 315
    new-instance v4, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 316
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 315
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 317
    new-instance v4, Landroid/util/LruCache;

    invoke-direct {v4, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 318
    new-instance v4, Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 319
    iget-object v8, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;

    invoke-direct {v9, v8}, Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;-><init>(Ljava/lang/Object;)V

    .line 318
    invoke-direct {v4, v5, v6, v7, v9}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/TaskKeyLruCache;Landroid/graphics/drawable/BitmapDrawable;Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;)V

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    .line 320
    return-void
.end method

.method private stopLoader()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->stop()V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 635
    return-void
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    return-object v0
.end method

.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 403
    if-eqz p2, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V

    .line 406
    :cond_0
    return-void
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 655
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsTaskLoader"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Icon Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Thumbnail Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Temp Thumbnail Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 664
    return-void

    .end local v0    # "innerPrefix":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 596
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    return v0

    .line 599
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return v0
.end method

.method getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 586
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    return v0

    .line 589
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    return v0
.end method

.method getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "loadIfNotCached"    # Z

    .prologue
    const/4 v4, 0x0

    .line 514
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 517
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 518
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 519
    return-object v1

    .line 522
    :cond_0
    if-eqz p4, :cond_2

    .line 524
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, p2, v3, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_1

    .line 526
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 527
    return-object v1

    .line 531
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 532
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 533
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_2

    .line 535
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 536
    return-object v1

    .line 541
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    return-object v4
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    const/4 v6, 0x0

    .line 607
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 608
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 609
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 610
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    .line 611
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 612
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 613
    :cond_0
    const-string/jumbo v3, "RecentsTaskLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected null component name or activity info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-object v6

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_2
    return-object v0
.end method

.method getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 453
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 456
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 460
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 461
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 462
    return-object v1

    .line 465
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 466
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 467
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 468
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 469
    return-object v1

    .line 473
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 482
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 485
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 487
    return-object v1

    .line 491
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 492
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 493
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3, p2, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 494
    if-nez p2, :cond_1

    .line 500
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 502
    :cond_1
    return-object v1

    .line 506
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method declared-synchronized getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 7
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "loadIfNotCached"    # Z
    .param p3, "storeInCache"    # Z

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 549
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 551
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/ThumbnailData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .local v0, "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v0, :cond_0

    monitor-exit p0

    .line 553
    return-object v0

    .line 556
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    check-cast v0, Lcom/android/systemui/recents/model/ThumbnailData;

    .line 557
    .restart local v0    # "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v0, :cond_1

    .line 558
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1, v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 559
    return-object v0

    .line 562
    :cond_1
    if-eqz p2, :cond_3

    .line 563
    :try_start_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 564
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    .line 566
    iget v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 567
    const/4 v5, 0x1

    .line 566
    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v3

    .line 568
    .local v3, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    iget-object v4, v3, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 569
    if-eqz p3, :cond_2

    .line 570
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v4, p1, v3}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    .line 572
    return-object v3

    .end local v1    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v3    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    :cond_3
    monitor-exit p0

    .line 578
    return-object v6

    .end local v0    # "cached":Lcom/android/systemui/recents/model/ThumbnailData;
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    return-object v0
.end method

.method public getIconCacheSize()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 386
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 387
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 388
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    .line 389
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public declared-synchronized loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p3, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    monitor-enter p0

    .line 362
    if-nez p3, :cond_0

    .line 363
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :cond_0
    :try_start_1
    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->copyEntries(Lcom/android/systemui/recents/model/TaskKeyStrongCache;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->evictAll()V

    .line 374
    :cond_1
    invoke-virtual {p2, p3, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->evictAll()V

    .line 376
    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez v0, :cond_2

    .line 377
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 379
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .prologue
    .line 643
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 644
    .local v0, "activityInfoCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 645
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 652
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

.method public declared-synchronized onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    monitor-enter p0

    .line 413
    sparse-switch p1, :sswitch_data_0

    :goto_0
    monitor-exit p0

    .line 447
    return-void

    .line 416
    :sswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 418
    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    .line 417
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 423
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 425
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 424
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_0

    .line 430
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 432
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 431
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_0

    .line 437
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->evictAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public declared-synchronized preloadRawTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V
    .locals 1
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 346
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V
    .locals 1
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 352
    :try_start_0
    const-string/jumbo v0, "preloadPlan"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 357
    return-void

    .line 354
    :catchall_0
    move-exception v0

    .line 355
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 354
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startLoader(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    .line 627
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V

    .line 395
    return-void
.end method
