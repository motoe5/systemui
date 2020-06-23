.class public Lcom/android/systemui/recents/RecentsActivityLaunchState;
.super Ljava/lang/Object;
.source "RecentsActivityLaunchState.java"


# instance fields
.field public launchedFromApp:Z

.field public launchedFromBlacklistedApp:Z

.field public launchedFromHome:Z

.field public launchedFromPipApp:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedToTaskId:I

.field public launchedViaDockGesture:Z

.field public launchedViaDragGesture:Z

.field public launchedWithAltTab:Z

.field public launchedWithNextPipApp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialFocusTaskIndex(IZ)I
    .locals 4
    .param p1, "numTasks"    # I
    .param p2, "useGridLayout"    # Z

    .prologue
    .line 60
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 61
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 62
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v2, :cond_3

    .line 63
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    add-int/lit8 v2, p1, -0x1

    return v2

    .line 69
    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    if-eqz v2, :cond_1

    .line 72
    add-int/lit8 v2, p1, -0x1

    return v2

    .line 75
    :cond_1
    if-eqz p2, :cond_2

    .line 77
    add-int/lit8 v2, p1, -0x1

    return v2

    .line 81
    :cond_2
    add-int/lit8 v2, p1, -0x2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 83
    :cond_3
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    const/4 v2, -0x1

    return v2

    .line 90
    :cond_4
    add-int/lit8 v2, p1, -0x1

    return v2
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 54
    return-void
.end method
