.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# instance fields
.field public fakeShadows:Z

.field public isGridEnabled:Z

.field public final isLargeScreen:Z

.field public final isXLargeScreen:Z

.field private final mAppContext:Landroid/content/Context;

.field public mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

.field public final smallestWidth:I

.field public svelteLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v3}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 92
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 93
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    .line 94
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x7f05002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 96
    const v3, 0x7f0b0058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 97
    const-string/jumbo v3, "ro.recents.grid"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 100
    .local v1, "screenDensity":F
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDeviceSmallestWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    .line 101
    iget v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v6, 0x44160000    # 600.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    if-lt v3, v6, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    .line 102
    iget v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v6, 0x44340000    # 720.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    if-lt v3, v6, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    .line 103
    return-void

    :cond_0
    move v3, v5

    .line 101
    goto :goto_0

    :cond_1
    move v4, v5

    .line 102
    goto :goto_1
.end method


# virtual methods
.method public getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 119
    const/4 v3, 0x2

    .line 118
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 120
    .local v1, "isLandscape":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 121
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v2, :cond_2

    .line 122
    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/recents/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_1
    return-object v2

    .line 118
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "isLandscape":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isLandscape":Z
    goto :goto_0

    .line 122
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    :cond_1
    sget-object v2, Lcom/android/systemui/recents/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    .line 124
    :cond_2
    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/systemui/recents/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_2
    return-object v2

    :cond_3
    sget-object v2, Lcom/android/systemui/recents/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_2
.end method

.method public getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    return-object v0
.end method
