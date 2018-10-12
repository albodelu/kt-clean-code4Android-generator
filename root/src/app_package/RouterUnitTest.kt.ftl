package ${packageName}

import android.util.Log
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ${classname}RouterUnitTest {

   @Test
    fun test_${classname}Router_determineNextScreen_when_Input_Is() {
        // Given
        val router = ${classname}Router()
        val fragment = ${classname}Fragment()
        // Setup Data

        fragment.router = router
        router.fragment = WeakReference(fragment)

        // When - Based on the position or some other data decide what is the next scene
        val fragment = router.determineNextScreen(0)

        // Then
        val targetFragmentName = fragment.javaClass.name
        // Assert.assertEquals("When the some Data passed to ${classname}Router" +
        //        " Then next Fragment should be __Fragment",
        //        targetFragmentName,
        //        BoardingActivity::class.java.name)
    }

    companion object {
        const val TAG = "${classname}RouterUnitTest"
    }
}