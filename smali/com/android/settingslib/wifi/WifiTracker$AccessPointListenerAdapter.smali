.class Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessPointListenerAdapter"
.end annotation


# instance fields
.field final mPendingNotifications:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    .line 1002
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    .prologue
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 4
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1011
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    or-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1012
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 4
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1017
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    or-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    return-void
.end method
