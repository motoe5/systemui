.class final Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mFeedbackEnabled:Z

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p2, "-this1"    # Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    return-void
.end method

.method private computeFeedbackEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1300
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 1301
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "asi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1302
    .local v0, "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 1303
    const/4 v3, 0x1

    return v3

    .line 1306
    .end local v0    # "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return v5
.end method

.method private updateFeedbackEnabled()V
    .locals 1

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    .line 1295
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1274
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V

    .line 1273
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1280
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set6(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1284
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1290
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
