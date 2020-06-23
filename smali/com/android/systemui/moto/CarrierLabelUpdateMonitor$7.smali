.class final Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$7;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->sortByDirection(Landroid/util/SparseArray;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$isRtl:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$7;->val$isRtl:Z

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 411
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$7;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "o1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    .local p2, "o2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 414
    .local v0, "v1":I
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .line 415
    .local v1, "v2":I
    iget-boolean v2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$7;->val$isRtl:Z

    if-eqz v2, :cond_0

    sub-int v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sub-int v2, v0, v1

    goto :goto_0
.end method
