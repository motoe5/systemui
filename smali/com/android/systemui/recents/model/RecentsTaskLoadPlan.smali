.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field private static MIN_NUM_TASKS:I

.field private static SESSION_BEGIN_TIME:I


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentQuietProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPreloadedUserId:I

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    .line 58
    const v0, 0x1499700

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 6
    .param p1, "t"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 289
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private migrateLegacyLastStackActiveTime(I)J
    .locals 10
    .param p1, "currentUserId"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 305
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 306
    const-string/jumbo v7, "OverviewLastStackTaskActiveTime"

    .line 305
    invoke-static {v6, v7, v8, v9}, Lcom/android/systemui/Prefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 307
    .local v2, "legacyLastStackActiveTime":J
    cmp-long v6, v2, v8

    if-eqz v6, :cond_2

    .line 308
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "OverviewLastStackTaskActiveTime"

    invoke-static {v6, v7}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 310
    .local v4, "userMgr":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 311
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 312
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    .line 313
    .local v1, "userId":I
    if-eq v1, p1, :cond_0

    .line 314
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->updateOverviewLastStackActiveTimeAsync(JI)V

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "userId":I
    :cond_1
    return-wide v2

    .line 320
    .end local v0    # "i":I
    .end local v4    # "userMgr":Landroid/os/UserManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const-wide/16 v6, 0x0

    return-wide v6
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 6
    .param p1, "currentUserId"    # I

    .prologue
    .line 85
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 87
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 88
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_1

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 92
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 12
    .param p1, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .prologue
    const/4 v11, 0x1

    .line 232
    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 235
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 236
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 237
    .local v6, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_7

    .line 238
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    .line 239
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v7, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 241
    .local v7, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget-object v9, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v9, v10, :cond_1

    const/4 v1, 0x1

    .line 242
    .local v1, "isRunningTask":Z
    :goto_1
    iget v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v9, v6, v9

    if-lt v0, v9, :cond_2

    const/4 v2, 0x1

    .line 243
    .local v2, "isVisibleTask":Z
    :goto_2
    iget v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v9, v6, v9

    if-lt v0, v9, :cond_3

    const/4 v3, 0x1

    .line 246
    .local v3, "isVisibleThumbnail":Z
    :goto_3
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v9, :cond_4

    if-eqz v1, :cond_4

    .line 237
    :cond_0
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "isRunningTask":Z
    .end local v2    # "isVisibleTask":Z
    .end local v3    # "isVisibleThumbnail":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isRunningTask":Z
    goto :goto_1

    .line 242
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isVisibleTask":Z
    goto :goto_2

    .line 243
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isVisibleThumbnail":Z
    goto :goto_3

    .line 250
    :cond_4
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v9, :cond_6

    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    .line 251
    :cond_5
    iget-object v9, v5, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_6

    .line 252
    iget-object v9, v5, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2, v7, v9, v4, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 256
    :cond_6
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {p2, v7, v11, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    goto :goto_4

    .line 261
    .end local v1    # "isRunningTask":Z
    .end local v2    # "isVisibleTask":Z
    .end local v3    # "isVisibleThumbnail":Z
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_7
    return-void
.end method

.method public getRawTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    return-object v0
.end method

.method public getTaskStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 282
    :cond_1
    return v0
.end method

.method preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    .locals 44
    .param p1, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 132
    .local v39, "res":Landroid/content/res/Resources;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v27, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v6, :cond_0

    .line 134
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 137
    :cond_0
    new-instance v26, Landroid/util/SparseArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseArray;-><init>()V

    .line 138
    .local v26, "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    new-instance v25, Landroid/util/SparseIntArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseIntArray;-><init>()V

    .line 139
    .local v25, "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    new-instance v38, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v38 .. v38}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 140
    .local v38, "lockedUsers":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 141
    const v7, 0x7f1100d3

    .line 140
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 142
    .local v30, "dismissDescFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 143
    const v7, 0x7f1100d2

    .line 142
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 144
    .local v28, "appInfoDescFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mPreloadedUserId:I

    move/from16 v29, v0

    .line 145
    .local v29, "currentUserId":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->migrateLegacyLastStackActiveTime(I)J

    move-result-wide v36

    .line 146
    .local v36, "legacyLastStackActiveTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 147
    const-string/jumbo v7, "overview_last_stack_active_time"

    .line 146
    move-wide/from16 v0, v36

    move/from16 v2, v29

    invoke-static {v6, v7, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v34

    .line 151
    .local v34, "lastStackActiveTime":J
    const-wide/16 v40, -0x1

    .line 152
    .local v40, "newLastStackActiveTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v43

    .line 153
    .local v43, "taskCount":I
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v43

    if-ge v0, v1, :cond_c

    .line 154
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v31

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 157
    .local v42, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v42

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v42

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v42

    iget-object v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 158
    move-object/from16 v0, v42

    iget v9, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v42

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v42

    iget-wide v12, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 157
    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    .line 162
    .local v5, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, v42

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-static {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v33

    .line 164
    .local v33, "isFreeformTask":Z
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v6, :cond_5

    .line 167
    move-object/from16 v0, v42

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v6, v6, v34

    if-ltz v6, :cond_4

    .line 168
    add-int/lit8 v6, v43, -0x8

    move/from16 v0, v31

    if-lt v0, v6, :cond_3

    const/16 v17, 0x1

    .line 173
    .local v17, "isStackTask":Z
    :goto_1
    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p2

    if-ne v6, v0, :cond_8

    const/16 v16, 0x1

    .line 179
    .local v16, "isLaunchTarget":Z
    :goto_2
    if-eqz v17, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v40, v6

    if-gez v6, :cond_1

    .line 180
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move-wide/from16 v40, v0

    .line 184
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v32

    .line 185
    .local v32, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v10

    .line 187
    .local v10, "title":Ljava/lang/String;
    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 186
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "titleDescription":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, "dismissDescription":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    move-object/from16 v0, v28

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "appInfoDescription":Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 191
    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v6, v1, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 194
    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v9

    .line 195
    .local v9, "thumbnail":Lcom/android/systemui/recents/model/ThumbnailData;
    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v14

    .line 196
    .local v14, "activityColor":I
    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v15

    .line 197
    .local v15, "backgroundColor":I
    if-eqz v32, :cond_b

    .line 198
    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a

    const/16 v18, 0x1

    .line 199
    .local v18, "isSystemApp":Z
    :goto_4
    move-object/from16 v0, v42

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_2

    .line 200
    move-object/from16 v0, v42

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDeviceLocked(I)Z

    move-result v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 202
    :cond_2
    move-object/from16 v0, v42

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v24

    .line 205
    .local v24, "isLocked":Z
    new-instance v4, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v42

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v42

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 208
    move-object/from16 v0, v42

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    move/from16 v19, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v21, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    move/from16 v22, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    .line 205
    invoke-direct/range {v4 .. v24}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Lcom/android/systemui/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Z)V

    .line 211
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v7, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/16 v19, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_0

    .line 168
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v9    # "thumbnail":Lcom/android/systemui/recents/model/ThumbnailData;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "titleDescription":Ljava/lang/String;
    .end local v12    # "dismissDescription":Ljava/lang/String;
    .end local v13    # "appInfoDescription":Ljava/lang/String;
    .end local v14    # "activityColor":I
    .end local v15    # "backgroundColor":I
    .end local v16    # "isLaunchTarget":Z
    .end local v17    # "isStackTask":Z
    .end local v18    # "isSystemApp":Z
    .end local v24    # "isLocked":Z
    .end local v32    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    const/16 v17, 0x0

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_1

    .line 167
    .end local v17    # "isStackTask":Z
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_1

    .line 170
    .end local v17    # "isStackTask":Z
    :cond_5
    if-nez v33, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_6

    .line 171
    move-object/from16 v0, v42

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v6, v6, v34

    if-ltz v6, :cond_7

    sget v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    sub-int v6, v43, v6

    move/from16 v0, v31

    if-lt v0, v6, :cond_7

    const/16 v17, 0x1

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_1

    .line 170
    .end local v17    # "isStackTask":Z
    :cond_6
    const/16 v17, 0x1

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_1

    .line 171
    .end local v17    # "isStackTask":Z
    :cond_7
    const/16 v17, 0x0

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_1

    .line 173
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "isLaunchTarget":Z
    goto/16 :goto_2

    .line 192
    .restart local v10    # "title":Ljava/lang/String;
    .restart local v11    # "titleDescription":Ljava/lang/String;
    .restart local v12    # "dismissDescription":Ljava/lang/String;
    .restart local v13    # "appInfoDescription":Ljava/lang/String;
    .restart local v32    # "info":Landroid/content/pm/ActivityInfo;
    :cond_9
    const/4 v8, 0x0

    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 198
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "thumbnail":Lcom/android/systemui/recents/model/ThumbnailData;
    .restart local v14    # "activityColor":I
    .restart local v15    # "backgroundColor":I
    :cond_a
    const/16 v18, 0x0

    .restart local v18    # "isSystemApp":Z
    goto/16 :goto_4

    .line 197
    .end local v18    # "isSystemApp":Z
    :cond_b
    const/16 v18, 0x0

    .restart local v18    # "isSystemApp":Z
    goto/16 :goto_4

    .line 215
    .end local v5    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v9    # "thumbnail":Lcom/android/systemui/recents/model/ThumbnailData;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "titleDescription":Ljava/lang/String;
    .end local v12    # "dismissDescription":Ljava/lang/String;
    .end local v13    # "appInfoDescription":Ljava/lang/String;
    .end local v14    # "activityColor":I
    .end local v15    # "backgroundColor":I
    .end local v16    # "isLaunchTarget":Z
    .end local v17    # "isStackTask":Z
    .end local v18    # "isSystemApp":Z
    .end local v32    # "info":Landroid/content/pm/ActivityInfo;
    .end local v33    # "isFreeformTask":Z
    .end local v42    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_c
    const-wide/16 v6, -0x1

    cmp-long v6, v40, v6

    if-eqz v6, :cond_d

    .line 216
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    move-wide/from16 v0, v40

    move/from16 v2, v29

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->updateOverviewLastStackActiveTimeAsync(JI)V

    .line 221
    :cond_d
    new-instance v6, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 222
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    .line 223
    return-void
.end method

.method preloadRawTasks(Z)V
    .locals 4
    .param p1, "includeFrontMostExcludedTask"    # Z

    .prologue
    .line 106
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 107
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 108
    .local v0, "currentUserId":I
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    .line 109
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mPreloadedUserId:I

    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    .line 111
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 110
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 115
    return-void
.end method
