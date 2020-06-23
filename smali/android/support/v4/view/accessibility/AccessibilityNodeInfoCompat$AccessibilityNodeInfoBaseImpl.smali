.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoBaseImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionContextClick()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollDown()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollLeft()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1064
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollRight()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollToPosition()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollUp()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionSetProgress()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionShowOnScreen()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 826
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public getMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method public getViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 895
    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .prologue
    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 866
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "action"    # Ljava/lang/Object;

    .prologue
    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public setAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "focused"    # Z

    .prologue
    .line 787
    return-void
.end method

.method public setCanOpenPopup(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "opensPopup"    # Z

    .prologue
    .line 963
    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "collectionInfo"    # Ljava/lang/Object;

    .prologue
    .line 823
    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "collectionItemInfo"    # Ljava/lang/Object;

    .prologue
    .line 830
    return-void
.end method

.method public setMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "granularities"    # I

    .prologue
    .line 777
    return-void
.end method

.method public setVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "visibleToUser"    # Z

    .prologue
    .line 784
    return-void
.end method
